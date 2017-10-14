import React, { Component } from 'react'
import RateSlider from './RateSlider'
import { Button, Container } from 'semantic-ui-react'
// import RatingSubmitConfirm from './RatingSubmitConfirm'

export default class RateSliderGroup extends Component {

  render() {

    return (
      <div>
				<Container text textAlign='center'>

					{this.props.members.map( 
						(member, i) => 
							<RateSlider 
								key={i} 
								name={this.props.names[i]} address={member} 
								submitRating={this.props.submitRating}
								currentUser={this.props.currentUser}
							/>
					)}
					</Container>
					</div>
				)
			}
		}
		
		// <Button color="green" onClick={this.props.submitRatings}>Submit Ratings</Button>